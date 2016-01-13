.class Landroid/webkit/HTCWebCoreImpl$EditEventHub;
.super Ljava/lang/Object;
.source "HTCWebCoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCWebCoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditEventHub"
.end annotation


# static fields
.field static final ACTION_ID_IMAGE_DRAW:I = 0x248

.field static final ACTION_ID_IMAGE_REMOVE:I = 0x246

.field static final ACTION_ID_IMAGE_REPLACE:I = 0x245

.field static final ACTION_ID_IMAGE_RESIZE:I = 0x244

.field static final ACTION_ID_IMAGE_VIEW:I = 0x247

.field static final ACTION_ID_NOTES_IMAGE_RESIZE:I = 0x249

.field static final ALIGN_CENTER:I = 0x203

.field static final ALIGN_JUSTIFIED:I = 0x204

.field static final ALIGN_LEFT:I = 0x205

.field static final ALIGN_RIGHT:I = 0x206

.field static final AUTO_EXTEND_TO_WORD:I = 0x216

.field static final CANCEL_ANCHOR_SPAN:I = 0x223

.field static final CHECK_CURRENT_SPELL:I = 0x232

.field static final CLEAR_UNDO_REDO:I = 0x285

.field static final COMPOSING_TEXT:I = 0x1f6

.field static final COPY:I = 0x21c

.field static final COPY_IMAGE:I = 0x281

.field static final CUT:I = 0x21d

.field static final DELET_SURROUNDING_TEXT:I = 0x1f7

.field static final DO_SELECTION:I = 0x213

.field static final DO_SELECTION_INDX:I = 0x214

.field static final END_MATCH_PHRASE:I = 0x218

.field static final EXPORT_HTML:I = 0x1fc

.field static final EXPORT_HTML_CALLBACK:I = 0x1fd

.field static final FIND_CONTINOUS_BR_FROM_END:I = 0x221

.field static final FINISH_COMPOSING:I = 0x1f8

.field private static final FIRST_MSG:I = 0x1f4

.field static final GET_BODY_NODE:I = 0x277

.field static final GET_EMBED_NODES:I = 0x28b

.field static final GET_HIDDEN_EMBED_NODES:I = 0x28e

.field static final GET_HTML_STRING:I = 0x1f9

.field static final GET_IFRAME_NODES:I = 0x28d

.field static final GET_OBJECT_NODES:I = 0x28c

.field static final GET_READ_MODE_CONTENT:I = 0x259

.field static final GET_TITLE_DESCRIPTION:I = 0x290

.field static final GET_VIDEO_ID:I = 0x28f

.field private static final HTML_DOC_TYPE:Ljava/lang/String; = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n"

.field static final INFORM_COLOR_CHANGED:I = 0x20a

.field static final INSERT_ANCHOR_SPAN:I = 0x222

.field static final INSERT_HTML:I = 0x1fa

.field static final INSERT_HTML_ANCHOR_SPAN:I = 0x224

.field static final INSERT_HTML_STRING:I = 0x1fb

.field static final INSERT_HTML_TO_THE_END:I = 0x220

.field static final INSERT_IMAGE:I = 0x1fe

.field static final INSERT_PR_HTML_TO_THE_END:I = 0x25a

.field static final INSERT_TEXT:I = 0x1f5

.field private static final LAST_MSG:I = 0x234

.field static final MARK_MISSPELLING:I = 0x231

.field static final MATCH_PHRASE:I = 0x217

.field static final MODIFY_SELECTION:I = 0x212

.field static final PAINT_CARET:I = 0x20c

.field static final PASTE_LATEST_CONTENT_FROM_CLIPBOARD:I = 0x225

.field static final PASTE_PLAIN_TEXT:I = 0x21f

.field static final PASTE_WITH_STYLE:I = 0x21e

.field static final PAUSE_FP_DOPLAY:I = 0x263

.field static final RESCAN_SPELLINGS:I = 0x233

.field static final RESUME_FP_DOPLAY:I = 0x264

.field static final SAVE_HITTEST_IMAGE:I = 0x283

.field static final SAVE_IMAGECACHE_INTO_GIVENPATH:I = 0x284

.field static final SAVE_IMAGE_FAILED:I = -0x1

.field static final SELECTION_CONTAIN_MORETHAN_ONEIMAGE:I = 0x23a

.field static final SELECTION_CONTAIN_NO_IMAGE:I = 0x23c

.field static final SELECTION_CONTAIN_ONLY_ONE_IMAGE:I = 0x23b

.field static final SELECT_ALL:I = 0x219

.field static final SELECT_CJKS_WORD:I = 0x215

.field static final SELECT_IMAGE_AT:I = 0x282

.field static final SET_BACK_COLOR:I = 0x208

.field static final SET_EDITABLE:I = 0x1f4

.field static final SET_FONT_SIZE:I = 0x209

.field static final SET_FORE_COLOR:I = 0x207

.field static final SET_HTC_HTML_EDITING:I = 0x234

.field static final SET_IMAGE_ATTR:I = 0x20b

.field static final SET_IMAGE_SRC:I = 0x20d

.field static final SET_SELETION_PARAM:I = 0x26e

.field static final SWITCH_SPELL_CHECK:I = 0x230

.field static final TOGGLE_BOLD:I = 0x1ff

.field static final TOGGLE_ITALIC:I = 0x201

.field static final TOGGLE_STRIKETHROUGH:I = 0x202

.field static final TOGGLE_UNDERLINE:I = 0x200

.field static final UPDATE_SELECTION_INFO:I = 0x26d


# instance fields
.field final TRIM_STYLE_INDEX:I

.field public mLastContentChangedMsg:I

.field private nodePtr:I

.field private nodeText:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/HTCWebCoreImpl;


# direct methods
.method constructor <init>(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 415
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    .line 1094
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->TRIM_STYLE_INDEX:I

    return-void
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 52
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 505
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1fa

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x20c

    if-eq v3, v4, :cond_0

    .line 506
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    .line 508
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1054
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 511
    .local v17, "callback":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 512
    .local v24, "htmlString":Ljava/lang/String;
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v24

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlToTheEnd(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    .line 514
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 519
    .end local v17    # "callback":Landroid/os/Message;
    .end local v24    # "htmlString":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeFindContinuousBRFromEnd(II)I
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCoreImpl;->access$200(Landroid/webkit/HTCWebCoreImpl;II)I

    move-result v30

    .line 520
    .local v30, "pos":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    .line 521
    .local v18, "callbackMsg":Landroid/os/Message;
    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 522
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 525
    .end local v18    # "callbackMsg":Landroid/os/Message;
    .end local v30    # "pos":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    const/4 v3, 0x1

    :goto_1
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeModifySelection(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$300(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 528
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/Point;

    .line 529
    .local v31, "posPt":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    const/4 v3, 0x1

    :goto_2
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoWordSelection(IIIZ)V
    invoke-static {v4, v7, v8, v10, v3}, Landroid/webkit/HTCWebCoreImpl;->access$400(Landroid/webkit/HTCWebCoreImpl;IIIZ)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 532
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    const/4 v3, 0x1

    :goto_3
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelection(IIIZ)V
    invoke-static {v4, v7, v8, v10, v3}, Landroid/webkit/HTCWebCoreImpl;->access$500(Landroid/webkit/HTCWebCoreImpl;IIIZ)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 537
    .end local v31    # "posPt":Landroid/graphics/Point;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSelectAll(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$600(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 541
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v27, v3

    check-cast v27, [I

    .line 542
    .local v27, "indexes":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    aget v6, v27, v7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    aget v8, v27, v8

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto/16 :goto_0

    .line 546
    .end local v27    # "indexes":[I
    :pswitch_7
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 547
    .local v5, "pnode":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    .line 549
    .local v43, "start":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    if-eq v3, v5, :cond_6

    .line 550
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    const/4 v6, -0x1

    const/4 v8, -0x1

    move v7, v5

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$800(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 554
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 555
    .local v48, "text":Ljava/lang/String;
    if-eqz v48, :cond_1

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v43, :cond_1

    .line 559
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v43

    if-lt v0, v3, :cond_1d

    .line 560
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 563
    .end local v43    # "start":I
    .local v6, "start":I
    :goto_4
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 564
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    .line 577
    .end local v6    # "start":I
    :cond_7
    :goto_5
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 567
    .restart local v6    # "start":I
    :cond_8
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v33

    .line 569
    .local v33, "s_e":[I
    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v4, 0x1

    aget v4, v33, v4

    if-eq v3, v4, :cond_9

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    const/4 v7, 0x0

    aget v6, v33, v7

    .end local v6    # "start":I
    const/4 v7, 0x1

    aget v8, v33, v7

    move v7, v5

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto :goto_5

    .line 573
    .restart local v6    # "start":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    add-int/lit8 v8, v6, 0x1

    move v7, v5

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v3 .. v8}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto :goto_5

    .line 605
    .end local v5    # "pnode":I
    .end local v6    # "start":I
    .end local v33    # "s_e":[I
    .end local v48    # "text":Ljava/lang/String;
    :pswitch_8
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 606
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 608
    :cond_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 609
    .restart local v5    # "pnode":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 611
    .restart local v6    # "start":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    if-eq v3, v5, :cond_b

    .line 612
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodePtr:I

    .line 613
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    const/4 v10, -0x1

    const/4 v12, -0x1

    move v9, v5

    move v11, v5

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;
    invoke-static/range {v7 .. v12}, Landroid/webkit/HTCWebCoreImpl;->access$800(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    .line 616
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 617
    .restart local v48    # "text":Ljava/lang/String;
    if-eqz v48, :cond_1

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v6, :cond_1

    .line 621
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v6, v3, :cond_c

    .line 622
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 626
    :cond_c
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 629
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v33

    .line 631
    .restart local v33    # "s_e":[I
    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v4, 0x1

    aget v4, v33, v4

    if-eq v3, v4, :cond_1

    .line 633
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    const/4 v3, 0x0

    aget v10, v33, v3

    const/4 v3, 0x1

    aget v12, v33, v3

    move v9, v5

    move v11, v5

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V
    invoke-static/range {v7 .. v12}, Landroid/webkit/HTCWebCoreImpl;->access$700(Landroid/webkit/HTCWebCoreImpl;IIIII)V

    goto/16 :goto_0

    .line 642
    .end local v5    # "pnode":I
    .end local v6    # "start":I
    .end local v33    # "s_e":[I
    .end local v48    # "text":Ljava/lang/String;
    :pswitch_9
    sget-object v3, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 646
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_d

    const/4 v3, 0x1

    :goto_6
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetEditable(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1000(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 649
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_e

    const/4 v3, 0x1

    :goto_7
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetHtcHtmlEditing(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1100(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    .line 652
    :pswitch_c
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 653
    .local v32, "ret":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v32

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetVSbound(ILandroid/graphics/Rect;)I
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$1200(Landroid/webkit/HTCWebCoreImpl;ILandroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_f

    const/4 v3, 0x1

    :goto_8
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeShouldPaintingCaret(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1300(Landroid/webkit/HTCWebCoreImpl;IZ)V

    .line 655
    const/4 v3, -0x5

    const/4 v4, -0x5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v32

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeContentInvalidate(ILandroid/graphics/Rect;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$1400(Landroid/webkit/HTCWebCoreImpl;ILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 654
    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 662
    .end local v32    # "ret":Landroid/graphics/Rect;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsert(IILjava/lang/String;)V
    invoke-static {v4, v7, v8, v3}, Landroid/webkit/HTCWebCoreImpl;->access$1500(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/CharSequence;

    .line 709
    .local v48, "text":Ljava/lang/CharSequence;
    const/16 v39, 0x0

    .line 711
    .local v39, "spanInfo":[I
    move-object/from16 v0, v48

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_14

    move-object/from16 v41, v48

    .line 712
    check-cast v41, Landroid/text/Spanned;

    .line 713
    .local v41, "spanned":Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface/range {v41 .. v41}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v7, Landroid/text/style/UpdateAppearance;

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Landroid/text/style/UpdateAppearance;

    .line 714
    .local v38, "span":[Landroid/text/style/UpdateAppearance;
    if-eqz v38, :cond_14

    move-object/from16 v0, v38

    array-length v3, v0

    if-lez v3, :cond_14

    .line 715
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v37, v0

    .line 716
    .local v37, "size":I
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    .local v42, "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;>;"
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_9
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_12

    .line 719
    new-instance v36, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;

    aget-object v3, v38, v25

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;-><init>(Landroid/webkit/HTCWebCoreImpl$EditEventHub;Ljava/lang/Object;)V

    .line 720
    .local v36, "si":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    move-object/from16 v0, v36

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->type:I

    if-nez v3, :cond_11

    .line 721
    const/16 v36, 0x0

    .line 718
    :cond_10
    :goto_a
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 725
    :cond_11
    aget-object v3, v38, v25

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, v36

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    .line 726
    aget-object v3, v38, v25

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, v36

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    .line 727
    move-object/from16 v0, v36

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_10

    move-object/from16 v0, v36

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_10

    .line 728
    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 735
    .end local v36    # "si":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    :cond_12
    new-instance v35, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;-><init>(Landroid/webkit/HTCWebCoreImpl$EditEventHub;Ljava/lang/Object;)V

    .line 736
    .local v35, "sel":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->type:I

    .line 737
    invoke-static/range {v41 .. v41}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v0, v35

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    .line 738
    invoke-static/range {v41 .. v41}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v0, v35

    iput v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    .line 739
    move-object/from16 v0, v35

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_13

    move-object/from16 v0, v35

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_13

    .line 740
    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :goto_b
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 747
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 748
    .local v40, "spanSize":I
    mul-int/lit8 v3, v40, 0x4

    new-array v0, v3, [I

    move-object/from16 v39, v0

    .line 749
    const/16 v25, 0x0

    :goto_c
    move/from16 v0, v25

    move/from16 v1, v40

    if-ge v0, v1, :cond_14

    .line 750
    mul-int/lit8 v14, v25, 0x4

    .line 751
    .local v14, "base":I
    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;

    .line 752
    .restart local v36    # "si":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    move-object/from16 v0, v36

    iget v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->type:I

    aput v3, v39, v14

    .line 753
    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v36

    iget v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->color:I

    aput v4, v39, v3

    .line 754
    add-int/lit8 v3, v14, 0x2

    move-object/from16 v0, v36

    iget v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->start:I

    aput v4, v39, v3

    .line 755
    add-int/lit8 v3, v14, 0x3

    move-object/from16 v0, v36

    iget v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;->end:I

    aput v4, v39, v3

    .line 749
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 742
    .end local v14    # "base":I
    .end local v36    # "si":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    .end local v40    # "spanSize":I
    :cond_13
    const/16 v35, 0x0

    goto :goto_b

    .line 761
    .end local v25    # "i":I
    .end local v35    # "sel":Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;
    .end local v37    # "size":I
    .end local v38    # "span":[Landroid/text/style/UpdateAppearance;
    .end local v41    # "spanned":Landroid/text/Spanned;
    .end local v42    # "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/webkit/HTCWebCoreImpl$EditEventHub$1SpanInfo;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v39

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeComposing(IILjava/lang/String;[I)V
    invoke-static {v3, v4, v7, v8, v0}, Landroid/webkit/HTCWebCoreImpl;->access$1600(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;[I)V

    goto/16 :goto_0

    .line 768
    .end local v39    # "spanInfo":[I
    .end local v48    # "text":Ljava/lang/CharSequence;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v27, v3

    check-cast v27, [I

    .line 769
    .restart local v27    # "indexes":[I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    aget v10, v27, v3

    const/4 v3, 0x1

    aget v11, v27, v3

    const/4 v3, 0x2

    aget v12, v27, v3

    const/4 v3, 0x3

    aget v13, v27, v3

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeDeleteSurrounding(IIIIII)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/HTCWebCoreImpl;->access$1700(Landroid/webkit/HTCWebCoreImpl;IIIIII)V

    goto/16 :goto_0

    .line 775
    .end local v27    # "indexes":[I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeFinishComposing(II)V
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCoreImpl;->access$1800(Landroid/webkit/HTCWebCoreImpl;II)V

    goto/16 :goto_0

    .line 779
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$1900(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;

    move-result-object v22

    .line 780
    .local v22, "html":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_15

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 783
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 784
    .restart local v17    # "callback":Landroid/os/Message;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 789
    .end local v17    # "callback":Landroid/os/Message;
    .end local v22    # "html":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 790
    .local v28, "insert_html":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v28

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlString(ILjava/lang/String;)Z
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2000(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 797
    .end local v28    # "insert_html":Ljava/lang/String;
    :pswitch_13
    const/4 v15, 0x0

    .line 799
    .local v15, "bo":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v20, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 800
    .local v20, "fo":Ljava/io/FileWriter;
    new-instance v16, Ljava/io/BufferedWriter;

    const/16 v3, 0x1000

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .local v16, "bo":Ljava/io/BufferedWriter;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$1900(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;

    move-result-object v22

    .line 802
    .restart local v22    # "html":Ljava/lang/String;
    const-string v3, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 805
    if-eqz v16, :cond_1c

    .line 806
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 807
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 808
    const/4 v15, 0x0

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 805
    .end local v20    # "fo":Ljava/io/FileWriter;
    .end local v22    # "html":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :goto_d
    if-eqz v15, :cond_16

    .line 806
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->flush()V

    .line 807
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    .line 808
    const/4 v15, 0x0

    .line 805
    :cond_16
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 811
    :catch_0
    move-exception v19

    .line 812
    .local v19, "e":Ljava/lang/Exception;
    :goto_e
    const-string v3, "HtcWebCore"

    const-string v4, "EXPORT_HTML ERROR!"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 817
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 820
    .restart local v17    # "callback":Landroid/os/Message;
    const/4 v15, 0x0

    .line 822
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v20, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 823
    .restart local v20    # "fo":Ljava/io/FileWriter;
    new-instance v16, Ljava/io/BufferedWriter;

    const/16 v3, 0x1000

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 824
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$1900(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;

    move-result-object v22

    .line 825
    .restart local v22    # "html":Ljava/lang/String;
    const-string v3, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 828
    if-eqz v16, :cond_1b

    .line 829
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 830
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 831
    const/4 v15, 0x0

    .line 837
    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .end local v20    # "fo":Ljava/io/FileWriter;
    .end local v22    # "html":Ljava/lang/String;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    :goto_f
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 828
    :catchall_1
    move-exception v3

    :goto_10
    if-eqz v15, :cond_17

    .line 829
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->flush()V

    .line 830
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    .line 831
    const/4 v15, 0x0

    .line 828
    :cond_17
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 834
    :catch_1
    move-exception v19

    .line 835
    .restart local v19    # "e":Ljava/lang/Exception;
    :goto_11
    const-string v3, "HtcWebCore"

    const-string v4, "EXPORT_HTML_CALLBACK ERROR!"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 841
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v17    # "callback":Landroid/os/Message;
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtml(ILjava/lang/String;)Z
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$2100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 845
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ImageInfo;

    .line 846
    .local v26, "imageInfo":Landroid/webkit/WebView$ImageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/webkit/WebView$ImageInfo;->m_src:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v8, v0, Landroid/webkit/WebView$ImageInfo;->m_width:I

    move-object/from16 v0, v26

    iget v10, v0, Landroid/webkit/WebView$ImageInfo;->m_height:I

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertImage(ILjava/lang/String;II)V
    invoke-static {v3, v4, v7, v8, v10}, Landroid/webkit/HTCWebCoreImpl;->access$2200(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 851
    .end local v26    # "imageInfo":Landroid/webkit/WebView$ImageInfo;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInformColorChanged(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2300(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 854
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 855
    .local v50, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v50

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativePasteWithStyle(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2400(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 951
    .end local v50    # "txt":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    # setter for: Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCoreImpl;->access$2502(Landroid/webkit/HTCWebCoreImpl;Landroid/os/Message;)Landroid/os/Message;

    .line 956
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 957
    .local v49, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v49

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertAnchorSpan(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2600(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 961
    .end local v49    # "title":Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeCancelAnchorSpan(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2700(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 964
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 968
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v23, v3

    check-cast v23, Ljava/lang/String;

    .line 969
    .local v23, "htmlContainsAnchorSpan":Ljava/lang/String;
    const-string v3, "KENLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<MSG> INSERT_HTML_ANCHOR_SPAN: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v23

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$2800(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 974
    .end local v23    # "htmlContainsAnchorSpan":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeToggleBold(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$2900(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 977
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeToggleUnderline(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3000(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 980
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeToggleItalic(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3100(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 983
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeToggleStrikethrough(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3200(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 986
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeAlignCenter(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3300(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 989
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeAlignJustified(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3400(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 992
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeAlignLeft(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3500(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 995
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeAlignRight(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$3600(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 998
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetForeColor(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3700(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1001
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$3800(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetFontSize(II)V
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCoreImpl;->access$3900(Landroid/webkit/HTCWebCoreImpl;II)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBackColor(I)Ljava/lang/String;

    move-result-object v45

    .line 1006
    .local v45, "strRGBA":Ljava/lang/String;
    if-eqz v45, :cond_1

    const-string v3, "rgba(0, 0, 0, 0)"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v45

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V
    invoke-static {v3, v4, v0}, Landroid/webkit/HTCWebCoreImpl;->access$3800(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    .end local v45    # "strRGBA":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    .line 1015
    .local v51, "width":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 1016
    .local v21, "height":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1017
    .local v29, "pointer":I
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    .line 1018
    .local v47, "strWidth":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 1019
    .local v44, "strHeight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    move/from16 v2, v29

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, v1, v2}, Landroid/webkit/HTCWebCoreImpl;->access$4000(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1024
    .end local v21    # "height":I
    .end local v29    # "pointer":I
    .end local v44    # "strHeight":Ljava/lang/String;
    .end local v47    # "strWidth":Ljava/lang/String;
    .end local v51    # "width":I
    :pswitch_28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1025
    .restart local v29    # "pointer":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 1027
    .local v46, "strSrc":Ljava/lang/String;
    # getter for: Landroid/webkit/HTCWebCoreImpl;->HTC_DEBUG:Z
    invoke-static {}, Landroid/webkit/HTCWebCoreImpl;->access$4100()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1028
    const-string v3, "imageediting, SET_IMAGE_SRC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pointer = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", src ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-virtual {v3, v4, v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeSetImageSrc(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1033
    .end local v29    # "pointer":I
    .end local v46    # "strSrc":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const/4 v12, 0x1

    .line 1034
    .local v12, "isMissSpelling":Z
    :goto_12
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1035
    .local v9, "scNode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/graphics/Point;

    .line 1036
    .local v34, "scIndex":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v8

    move-object/from16 v0, v34

    iget v10, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v11, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeMarkMisspelling(IIIIZ)V
    invoke-static/range {v7 .. v12}, Landroid/webkit/HTCWebCoreImpl;->access$4200(Landroid/webkit/HTCWebCoreImpl;IIIIZ)V

    goto/16 :goto_0

    .line 1033
    .end local v9    # "scNode":I
    .end local v12    # "isMissSpelling":Z
    .end local v34    # "scIndex":Landroid/graphics/Point;
    :cond_19
    const/4 v12, 0x0

    goto :goto_12

    .line 1040
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v4}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v4

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeCheckCurrentSpell(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCoreImpl;->access$4300(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 1048
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static {v3}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1a

    const/4 v3, 0x1

    :goto_13
    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetSpellCheck(IZ)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCoreImpl;->access$4400(Landroid/webkit/HTCWebCoreImpl;IZ)V

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    goto :goto_13

    .line 834
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v17    # "callback":Landroid/os/Message;
    .restart local v20    # "fo":Ljava/io/FileWriter;
    .restart local v22    # "html":Ljava/lang/String;
    :catch_2
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_11

    .line 828
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v22    # "html":Ljava/lang/String;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_10

    .line 811
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v17    # "callback":Landroid/os/Message;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v22    # "html":Ljava/lang/String;
    :catch_3
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_e

    .line 805
    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v22    # "html":Ljava/lang/String;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_d

    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v17    # "callback":Landroid/os/Message;
    .restart local v22    # "html":Ljava/lang/String;
    :cond_1b
    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_f

    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v17    # "callback":Landroid/os/Message;
    .restart local v16    # "bo":Ljava/io/BufferedWriter;
    :cond_1c
    move-object/from16 v15, v16

    .end local v16    # "bo":Ljava/io/BufferedWriter;
    .restart local v15    # "bo":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .end local v15    # "bo":Ljava/io/BufferedWriter;
    .end local v20    # "fo":Ljava/io/FileWriter;
    .end local v22    # "html":Ljava/lang/String;
    .restart local v5    # "pnode":I
    .restart local v43    # "start":I
    .local v48, "text":Ljava/lang/String;
    :cond_1d
    move/from16 v6, v43

    .end local v43    # "start":I
    .restart local v6    # "start":I
    goto/16 :goto_4

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_15
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_17
        :pswitch_27
        :pswitch_c
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method handleOtherMsg(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1097
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1110
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    .line 1111
    .local v7, "callback":Landroid/os/Message;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v7, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeGetPureReaderContents(ILjava/util/ArrayList;I)Z
    invoke-static {v0, v1, v4, v2}, Landroid/webkit/HTCWebCoreImpl;->access$4500(Landroid/webkit/HTCWebCoreImpl;ILjava/util/ArrayList;I)Z

    move-result v25

    .line 1114
    .local v25, "success":Z
    iput-object v4, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1115
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1117
    if-nez v25, :cond_0

    .line 1118
    const-string v30, "KENLOG"

    const-string v31, "[PureReader] fail to get pure contents from native layer."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    .end local v4    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "callback":Landroid/os/Message;
    .end local v25    # "success":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 1123
    .local v13, "htmlString":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_0

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlToTheEnd(ILjava/lang/String;)V
    invoke-static {v0, v1, v13}, Landroid/webkit/HTCWebCoreImpl;->access$100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V

    goto :goto_0

    .line 1129
    .end local v13    # "htmlString":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativePauseFPDoPlay()V
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$4600(Landroid/webkit/HTCWebCoreImpl;)V

    goto :goto_0

    .line 1133
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeResumeFPDoPlay()V
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$4700(Landroid/webkit/HTCWebCoreImpl;)V

    goto :goto_0

    .line 1137
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    const/4 v11, 0x1

    .line 1138
    .local v11, "createTextSelect":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeUpdateTextSelection(IZ)I
    invoke-static {v0, v1, v11}, Landroid/webkit/HTCWebCoreImpl;->access$4800(Landroid/webkit/HTCWebCoreImpl;IZ)I

    move-result v24

    .line 1139
    .local v24, "selectionPtr":I
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0xb7

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v24

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1137
    .end local v11    # "createTextSelect":Z
    .end local v24    # "selectionPtr":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1146
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v30

    if-nez v30, :cond_2

    .line 1147
    const-string v30, "HtcWebCore"

    const-string v31, "mCoreNativeClass is 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1149
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSetSeletionTypeAndFlag(III)V
    invoke-static/range {v30 .. v33}, Landroid/webkit/HTCWebCoreImpl;->access$4900(Landroid/webkit/HTCWebCoreImpl;III)V

    goto/16 :goto_0

    .line 1154
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$5000(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;

    move-result-object v31

    monitor-enter v31

    .line 1155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->setBodyNode(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$5100(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v30

    if-nez v30, :cond_3

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    const/16 v32, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    # setter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I
    invoke-static {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->access$5102(Landroid/webkit/HTCWebCoreImpl;I)I

    .line 1158
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$5000(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->notify()V

    .line 1159
    monitor-exit v31

    goto/16 :goto_0

    :catchall_0
    move-exception v30

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v30

    .line 1163
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1164
    .local v8, "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v5, "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetEmbedNodes(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1167
    .local v26, "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1168
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1172
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1173
    .restart local v8    # "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .restart local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetObjectNodes(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1176
    .restart local v26    # "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1177
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1181
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1182
    .restart local v8    # "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .restart local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetIFrameNodes(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1185
    .restart local v26    # "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1186
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1190
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1191
    .restart local v8    # "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .restart local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHiddenEmbedNodes(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1194
    .restart local v26    # "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1195
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1199
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1200
    .restart local v8    # "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .restart local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetVideoID(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1203
    .restart local v26    # "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1204
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1208
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    .line 1209
    .restart local v8    # "callback2":Landroid/os/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .restart local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    iget v0, v8, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetTitleDescription(ILjava/util/ArrayList;I)Z

    move-result v26

    .line 1212
    .restart local v26    # "success2":Z
    iput-object v5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1217
    .end local v5    # "arrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "callback2":Landroid/os/Message;
    .end local v26    # "success2":Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$5200(Landroid/webkit/HTCWebCoreImpl;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 1219
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Ljava/lang/String;

    move-object/from16 v27, v30

    check-cast v27, [Ljava/lang/String;

    .line 1220
    .local v27, "urls":[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v12, v27, v30

    .line 1221
    .local v12, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$5200(Landroid/webkit/HTCWebCoreImpl;)Ljava/lang/String;

    move-result-object v10

    .line 1222
    .local v10, "copiedHtml":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;
    invoke-static/range {v30 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$5202(Landroid/webkit/HTCWebCoreImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1224
    const-string v16, "^(.*)(<img[^>]+src\\s*=\\s*)[\'\"]([^\'\"]+)[\'\"]([^>]*)>(.*)$"

    .line 1225
    .local v16, "imgTagRegex":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 1226
    .local v15, "imgTagPatt":Ljava/util/regex/Pattern;
    invoke-virtual {v15, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 1227
    .local v21, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1228
    const-string v19, "^(http|data|else)(.+)|(.+)(jpg|jpeg|png|gif|bmp)$"

    .line 1229
    .local v19, "imgUrlRegex":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 1232
    .local v17, "imgUrlPatt":Ljava/util/regex/Pattern;
    const-string v20, "<img[^>]+src\\s*=\\s*"

    .line 1233
    .local v20, "imgUrlRegexTrim":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 1234
    .local v18, "imgUrlPattTrim":Ljava/util/regex/Pattern;
    const-string v22, "<img src="

    .line 1236
    .local v22, "replacement":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v30

    move/from16 v0, v30

    if-gt v14, v0, :cond_8

    .line 1237
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->matches()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1238
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1245
    :cond_4
    :goto_3
    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v14, v0, :cond_5

    .line 1246
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1236
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1239
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->matches()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 1240
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1241
    sget-boolean v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v30, :cond_4

    const-string v30, "Image"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Copy Image group "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " hit!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1250
    .end local v14    # "i":I
    .end local v17    # "imgUrlPatt":Ljava/util/regex/Pattern;
    .end local v18    # "imgUrlPattTrim":Ljava/util/regex/Pattern;
    .end local v19    # "imgUrlRegex":Ljava/lang/String;
    .end local v20    # "imgUrlRegexTrim":Ljava/lang/String;
    .end local v22    # "replacement":Ljava/lang/String;
    :cond_7
    sget-boolean v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v30, :cond_8

    const-string v30, "Image"

    const-string v31, "WebViewCore::COPY_IMAGE not match"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_8
    sget-boolean v30, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v30, :cond_9

    const-string v30, "Image"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "WebViewCore::COPY_IMAGE copiedHtml? "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_9
    if-eqz v10, :cond_0

    .line 1254
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v9, v0, [Ljava/lang/String;

    const/16 v30, 0x0

    const-string v31, "copy_image"

    aput-object v31, v9, v30

    const/16 v30, 0x1

    aput-object v10, v9, v30

    .line 1256
    .local v9, "copied":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v30

    if-eqz v30, :cond_a

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v30

    const/16 v31, 0x23b

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebViewClassic;->setClipboardSelectionStatus(I)V

    .line 1259
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$900(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0x89

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1266
    .end local v9    # "copied":[Ljava/lang/String;
    .end local v10    # "copiedHtml":Ljava/lang/String;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imgTagPatt":Ljava/util/regex/Pattern;
    .end local v16    # "imgTagRegex":Ljava/lang/String;
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v27    # "urls":[Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1267
    .local v28, "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 1268
    .local v29, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v32, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mNativeClass:I
    invoke-static/range {v32 .. v32}, Landroid/webkit/HTCWebCoreImpl;->access$5300(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v28

    move/from16 v3, v29

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSelectImageHTMLAt(III)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/HTCWebCoreImpl;->access$5400(Landroid/webkit/HTCWebCoreImpl;III)Ljava/lang/String;

    move-result-object v31

    # setter for: Landroid/webkit/HTCWebCoreImpl;->imageHTML:Ljava/lang/String;
    invoke-static/range {v30 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$5202(Landroid/webkit/HTCWebCoreImpl;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1272
    .end local v28    # "x":I
    .end local v29    # "y":I
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 1273
    .local v6, "b":Landroid/os/Bundle;
    const-string v30, "Image"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "WebViewCore::SAVE_HITTEST_IMAGE filePath: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "url"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$5300(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    const-string v32, "nodeRef"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    const-string v33, "url"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSaveHitTestImage(IILjava/lang/String;)Z
    invoke-static/range {v30 .. v33}, Landroid/webkit/HTCWebCoreImpl;->access$5500(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)Z

    goto/16 :goto_0

    .line 1278
    .end local v6    # "b":Landroid/os/Bundle;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 1279
    .local v21, "m":Landroid/os/Message;
    # getter for: Landroid/webkit/HTCWebCoreImpl;->HTC_DEBUG:Z
    invoke-static {}, Landroid/webkit/HTCWebCoreImpl;->access$4100()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 1280
    const-string v31, "imageediting"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "HTCWEBCORE::SAVE_IMAGECACHE_INTO_GIVENPATH: filePath: "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v30 .. v30}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v30

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativeSaveHitTestImage(IILjava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/HTCWebCoreImpl;->access$5500(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)Z

    move-result v23

    .line 1286
    .local v23, "saved":Z
    if-nez v23, :cond_c

    .line 1287
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1289
    :cond_c
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1294
    .end local v21    # "m":Landroid/os/Message;
    .end local v23    # "saved":Z
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->this$0:Landroid/webkit/HTCWebCoreImpl;

    move-object/from16 v31, v0

    # getter for: Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I
    invoke-static/range {v31 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$000(Landroid/webkit/HTCWebCoreImpl;)I

    move-result v31

    # invokes: Landroid/webkit/HTCWebCoreImpl;->nativehtcClearUndoRedoOperations(I)V
    invoke-static/range {v30 .. v31}, Landroid/webkit/HTCWebCoreImpl;->access$5600(Landroid/webkit/HTCWebCoreImpl;I)V

    goto/16 :goto_0

    .line 1097
    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_0
        0x25a -> :sswitch_1
        0x263 -> :sswitch_2
        0x264 -> :sswitch_3
        0x26d -> :sswitch_4
        0x26e -> :sswitch_5
        0x277 -> :sswitch_6
        0x281 -> :sswitch_d
        0x282 -> :sswitch_e
        0x283 -> :sswitch_f
        0x284 -> :sswitch_10
        0x285 -> :sswitch_11
        0x28b -> :sswitch_7
        0x28c -> :sswitch_8
        0x28d -> :sswitch_9
        0x28e -> :sswitch_a
        0x28f -> :sswitch_b
        0x290 -> :sswitch_c
    .end sparse-switch
.end method

.method isEditMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 499
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x234

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
