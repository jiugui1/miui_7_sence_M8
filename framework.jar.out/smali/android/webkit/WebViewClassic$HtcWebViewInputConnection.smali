.class Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;
.super Landroid/webkit/WebViewClassic$WVInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcWebViewInputConnection"
.end annotation


# instance fields
.field private final JimeTAG:Ljava/lang/String;

.field isCommit:Z

.field isComposing:Z

.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mInputTypeOld:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field mOldText:Landroid/text/Editable;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 764
    iput-object p1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 775
    const v0, 0x2c0a1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    .line 780
    const v0, 0x12000001

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputTypeOld:I

    .line 793
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    .line 794
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    .line 795
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    .line 798
    const-string v0, "Jime"

    iput-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->JimeTAG:Ljava/lang/String;

    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "numReplaced"    # I

    .prologue
    const/4 v4, 0x0

    .line 1722
    iget v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 1723
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1724
    .local v0, "editable":Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 1725
    .local v1, "maxReplace":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1726
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1728
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1731
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "maxReplace":I
    :cond_0
    return-object p1
.end method

.method private printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1084
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 1085
    check-cast v3, Landroid/text/Spanned;

    .line 1086
    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 1087
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1088
    aget-object v1, v2, v0

    .line 1089
    .local v1, "o":Ljava/lang/Object;
    const-string v4, "JimeSpans"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    return-void
.end method

.method private sendCharacter(C)V
    .locals 10
    .param p1, "c"    # C

    .prologue
    const/4 v9, 0x0

    .line 1683
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 1684
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 1686
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 1687
    .local v1, "chars":[C
    aput-char p1, v1, v9

    .line 1688
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 1689
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 1690
    move-object v0, v3

    .local v0, "arr$":[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 1692
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x4

    invoke-static {v2, v7}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1695
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1690
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1698
    .end local v0    # "arr$":[Landroid/view/KeyEvent;
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x8d

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1699
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1701
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1710
    .local v1, "eventTime":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1714
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1718
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 30
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xbf

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xbf

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 1489
    :cond_0
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    .line 1490
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v15

    .line 1491
    .local v15, "newEditable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    .line 1492
    .local v8, "editable":Landroid/text/Editable;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1493
    .local v18, "original":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 1494
    .local v11, "isCharacterAdd":Z
    const/4 v12, 0x0

    .line 1495
    .local v12, "isCharacterDelete":Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v25

    .line 1496
    .local v25, "textLength":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 1497
    .local v19, "originalLength":I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v23

    .line 1498
    .local v23, "selectionStart":I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v22

    .line 1499
    .local v22, "selectionEnd":I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1500
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 1501
    add-int/lit8 v26, v19, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_9

    const/4 v11, 0x1

    .line 1518
    :cond_1
    :goto_0
    invoke-static {v15}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v14

    .line 1519
    .local v14, "newCompsingStart":I
    invoke-static {v15}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v13

    .line 1521
    .local v13, "newCompsingEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1522
    const-string v26, "webview"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[WebViewClassic.WebViewInputConnection::setNewText] >> isCommit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " isPreviousComposing="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(composed)newCompsingStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " newCompsingEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n(original)selectionStart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " selectionEnd="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mBatchLevel="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mIsBatchingTextChanges="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\nstart="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " end="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " original=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] text=["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    .line 1530
    .local v7, "composing":Z
    if-ltz v14, :cond_c

    if-ltz v13, :cond_c

    if-eq v14, v13, :cond_c

    const/16 v24, 0x1

    .line 1531
    .local v24, "stillComposing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 1536
    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v21

    .line 1539
    .local v21, "selecting":Z
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v17

    .line 1540
    .local v17, "oldLen":I
    if-eqz v7, :cond_14

    .line 1543
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1544
    const-string v26, "Jimesetnewtext"

    const-string v27, "start composing"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_3
    move-object/from16 v9, p3

    .line 1547
    .local v9, "editingTxt":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1548
    move/from16 v0, v22

    if-ne v0, v13, :cond_10

    const/4 v10, 0x1

    .line 1549
    .local v10, "finishComposing":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 1550
    .local v6, "commit":Landroid/os/Message;
    iput-object v9, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1551
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_11

    .line 1552
    const/16 v26, 0xb5

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    .line 1556
    :goto_4
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1558
    if-nez v21, :cond_4

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 1561
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1563
    :cond_5
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1564
    const-string v26, "Jimesetnewtext"

    const-string v27, "COMMIT_TEXT and UPDATE_SELECTION_AND_CARET"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    .end local v6    # "commit":Landroid/os/Message;
    .end local v10    # "finishComposing":Z
    :cond_6
    :goto_5
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    .line 1668
    .end local v9    # "editingTxt":Ljava/lang/CharSequence;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    if-eqz v26, :cond_8

    .line 1669
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .local v16, "newText":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1671
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v26

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v8, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    .end local v16    # "newText":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    .line 1676
    return-void

    .line 1501
    .end local v7    # "composing":Z
    .end local v13    # "newCompsingEnd":I
    .end local v14    # "newCompsingStart":I
    .end local v17    # "oldLen":I
    .end local v21    # "selecting":Z
    .end local v24    # "stillComposing":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1504
    :cond_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 1505
    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-eqz v26, :cond_b

    const/4 v12, 0x1

    :goto_7
    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    .line 1530
    .restart local v7    # "composing":Z
    .restart local v13    # "newCompsingEnd":I
    .restart local v14    # "newCompsingStart":I
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1534
    .restart local v24    # "stillComposing":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    if-eqz v24, :cond_f

    :cond_e
    const/4 v7, 0x1

    :goto_8
    goto/16 :goto_2

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    .line 1548
    .restart local v9    # "editingTxt":Ljava/lang/CharSequence;
    .restart local v17    # "oldLen":I
    .restart local v21    # "selecting":Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1554
    .restart local v6    # "commit":Landroid/os/Message;
    .restart local v10    # "finishComposing":Z
    :cond_11
    const/16 v26, 0xb4

    move/from16 v0, v26

    iput v0, v6, Landroid/os/Message;->what:I

    goto/16 :goto_4

    .line 1567
    .end local v6    # "commit":Landroid/os/Message;
    .end local v10    # "finishComposing":Z
    :cond_12
    if-eqz v21, :cond_13

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    const-string v28, ""

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v22

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 1570
    .local v20, "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1572
    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb4

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 1575
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1576
    const-string v26, "Jimesetnewtext"

    const-string v27, "COMPOSING_TEXT and UPDATE_SELECTION_AND_CARET"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1584
    .end local v9    # "editingTxt":Ljava/lang/CharSequence;
    :cond_14
    if-eqz v11, :cond_18

    .line 1586
    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1587
    .local v5, "ch":C
    const/16 v26, 0xa

    move/from16 v0, v26

    if-eq v5, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v26 .. v26}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView;->isEditable()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 1591
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1592
    const-string v26, "Jimesetnewtext"

    const-string v27, "UPDATE_SELECTION_AND_CARET characteradd, COMMIT_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_15
    if-eqz v21, :cond_16

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1600
    :goto_9
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    goto/16 :goto_6

    .line 1596
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    .line 1604
    :cond_17
    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendCharacter(C)V

    .line 1605
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1606
    const-string v26, "Jimesetnewtext"

    const-string v27, "characteradd"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1608
    .end local v5    # "ch":C
    :cond_18
    if-eqz v12, :cond_1a

    .line 1610
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_19

    if-nez v21, :cond_19

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    add-int/lit8 v28, v22, -0x1

    const-string v29, ""

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v22

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 1616
    .restart local v20    # "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1617
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1618
    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable charactredelete, REPLACE_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1621
    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_19
    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    goto/16 :goto_6

    .line 1622
    :cond_1a
    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v26

    if-nez v26, :cond_7

    .line 1626
    :cond_1b
    if-eqz v21, :cond_1c

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-nez v26, :cond_1c

    .line 1628
    const/16 v26, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    goto/16 :goto_6

    .line 1630
    :cond_1c
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_1e

    if-nez v21, :cond_1e

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x8b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 1633
    .restart local v20    # "replaceMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1634
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 1635
    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable replace, REPLACE_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_1d
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-lez v26, :cond_7

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1641
    .end local v20    # "replaceMessage":Landroid/os/Message;
    :cond_1e
    move-object/from16 v9, p3

    .line 1642
    .restart local v9    # "editingTxt":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb5

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 1643
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 1644
    const-string v26, "Jimesetnewtext"

    const-string v27, "iseditable replace, COMMIT_TEXT"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_1f
    if-eqz v21, :cond_7

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0xb6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6
.end method

.method private updateSelection()V
    .locals 10

    .prologue
    const/16 v9, 0xb6

    .line 1448
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 1449
    .local v6, "editable":Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1450
    .local v2, "selectionStart":I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1451
    .local v3, "selectionEnd":I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1452
    .local v4, "composingStart":I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1454
    .local v5, "composingEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "JimeDoselect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inside updateSelection(), selectionStart ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selectionEnd ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", composingStart ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", composingEnd ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1459
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1460
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1464
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsRichEditable()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v2, v2, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1469
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v9, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1473
    :cond_1
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)V

    .line 949
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 1188
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    .line 1189
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1190
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    .line 1192
    return v1
.end method

.method completeComposing()V
    .locals 15

    .prologue
    const/4 v10, -0x1

    .line 858
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v12

    .line 859
    .local v12, "editable":Landroid/text/Editable;
    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 860
    .local v4, "compStart":I
    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 861
    .local v5, "compEnd":I
    if-ltz v4, :cond_3

    if-ltz v5, :cond_3

    if-eq v4, v5, :cond_3

    .line 862
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->htc_finishComposing()Z

    .line 863
    invoke-static {v12}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 864
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, "JimeBG"

    const-string v3, "completeComposing"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 867
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    .line 868
    invoke-static {v12}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 869
    .local v14, "selectStart":I
    invoke-static {v12}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 870
    .local v13, "selectEnd":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    const-string v1, "JimeTAG+BG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "composingstart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", composingend="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", selectionstart="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", selectionend="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isHtcIME()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    if-ne v5, v13, :cond_4

    add-int/lit8 v2, v5, -0x1

    .line 874
    .local v2, "fakeIndex":I
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 876
    .end local v2    # "fakeIndex":I
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    move-object v6, v0

    move v8, v5

    move v9, v5

    move v11, v10

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 879
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "selectEnd":I
    .end local v14    # "selectStart":I
    :cond_3
    return-void

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v13    # "selectEnd":I
    .restart local v14    # "selectStart":I
    :cond_4
    move v2, v5

    .line 873
    goto :goto_0
.end method

.method copyEditableWithSelectSpan(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 851
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 852
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 853
    .local v1, "selectStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 854
    .local v0, "selectEnd":I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mOldText:Landroid/text/Editable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 855
    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 12
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, -0x1

    .line 1199
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 1200
    .local v4, "content":Landroid/text/Editable;
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 1201
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1202
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1204
    .local v1, "b":I
    if-le v0, v1, :cond_0

    .line 1205
    move v8, v0

    .line 1206
    .local v8, "tmp":I
    move v0, v1

    .line 1207
    move v1, v8

    .line 1210
    .end local v8    # "tmp":I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 1211
    .local v2, "ca":I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 1212
    .local v3, "cb":I
    if-ge v3, v2, :cond_1

    .line 1213
    move v8, v2

    .line 1214
    .restart local v8    # "tmp":I
    move v2, v3

    .line 1215
    move v3, v8

    .line 1217
    .end local v8    # "tmp":I
    :cond_1
    if-eq v2, v9, :cond_3

    if-eq v3, v9, :cond_3

    .line 1218
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 1219
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 1222
    :cond_3
    const/4 v5, 0x0

    .line 1224
    .local v5, "deleted":Z
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    add-int v10, v1, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1225
    .local v6, "endDelete":I
    if-le v6, v1, :cond_4

    .line 1226
    const/4 v5, 0x1

    .line 1227
    const-string v9, ""

    invoke-direct {p0, v1, v6, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 1229
    :cond_4
    sub-int v9, v0, p1

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1230
    .local v7, "startDelete":I
    if-ge v7, v0, :cond_5

    .line 1231
    const/4 v5, 0x1

    .line 1232
    const-string v9, ""

    invoke-direct {p0, v7, v0, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 1236
    :cond_5
    if-eqz v5, :cond_6

    if-ne v0, v1, :cond_7

    if-nez v0, :cond_7

    .line 1238
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    .line 1239
    const/16 v9, 0x43

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->sendKey(I)V

    .line 1240
    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    .line 1244
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->deleteSurroundingText(II)Z

    move-result v9

    return v9
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    .line 956
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)V

    .line 959
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 5

    .prologue
    .line 883
    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isCommit:Z

    if-nez v3, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 885
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 886
    .local v2, "start":I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 887
    .local v1, "end":I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-eq v2, v1, :cond_0

    .line 888
    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb9

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 891
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebViewClassic$WVInputConnection;->finishComposingText()Z

    move-result v3

    return v3
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method htc_commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 804
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f5

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method htc_finishComposing()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v1, 0x1f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method htc_handleKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method htc_setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v7, -0x1

    .line 814
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 815
    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 823
    .local v2, "s":I
    invoke-static {v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 825
    .local v0, "e":I
    move-object v5, p1

    .line 826
    .local v5, "send":Ljava/lang/CharSequence;
    if-le v2, v7, :cond_0

    if-ge v2, v0, :cond_0

    .line 827
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 828
    instance-of v6, v5, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    .line 829
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int v4, v6, v2

    .line 830
    .local v4, "selectStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int v3, v6, v2

    .line 832
    .local v3, "selectEnd":I
    if-le v4, v7, :cond_0

    if-le v3, v7, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v4, v6, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v3, v6, :cond_0

    move-object v6, v5

    .line 834
    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 839
    .end local v3    # "selectEnd":I
    .end local v4    # "selectStart":I
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v7, 0x1f6

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 842
    const/4 v6, 0x1

    return v6
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 5
    .param p1, "initData"    # Landroid/webkit/WebViewCore$TextFieldInitData;

    .prologue
    .line 1280
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 1281
    .local v3, "type":I
    const/16 v2, 0xa1

    .line 1283
    .local v2, "inputType":I
    const/high16 v1, 0x12000000

    .line 1285
    .local v1, "imeOptions":I
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v4, :cond_0

    .line 1286
    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    .line 1288
    :cond_0
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    .line 1289
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v4, :cond_1

    .line 1290
    const/high16 v4, 0x8000000

    or-int/2addr v1, v4

    .line 1292
    :cond_1
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v4, :cond_2

    .line 1293
    const/high16 v4, 0x4000000

    or-int/2addr v1, v4

    .line 1296
    :cond_2
    const/4 v0, 0x2

    .line 1297
    .local v0, "action":I
    packed-switch v3, :pswitch_data_0

    .line 1336
    :goto_0
    :pswitch_0
    or-int/2addr v1, v0

    .line 1337
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mHint:Ljava/lang/String;

    .line 1339
    iget v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    iput v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputTypeOld:I

    .line 1341
    iput v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    .line 1342
    iput v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    .line 1343
    iget v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mMaxLength:I

    .line 1344
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 1345
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    .line 1346
    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 1347
    return-void

    .line 1301
    :pswitch_1
    const v4, 0x2c000

    or-int/2addr v2, v4

    .line 1304
    const/4 v0, 0x1

    .line 1305
    goto :goto_0

    .line 1307
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 1308
    goto :goto_0

    .line 1310
    :pswitch_3
    const/4 v0, 0x3

    .line 1311
    goto :goto_0

    .line 1314
    :pswitch_4
    const/16 v2, 0xd1

    .line 1316
    goto :goto_0

    .line 1319
    :pswitch_5
    const/16 v2, 0x3002

    .line 1323
    goto :goto_0

    .line 1326
    :pswitch_6
    const/4 v2, 0x3

    .line 1327
    goto :goto_0

    .line 1331
    :pswitch_7
    or-int/lit8 v2, v2, 0x10

    .line 1332
    goto :goto_0

    .line 1297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isBatchEditing()Z
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "editorAction"    # I

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 1250
    const/4 v0, 0x1

    .line 1251
    .local v0, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 1272
    :pswitch_0
    invoke-super {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 1276
    :goto_0
    return v0

    .line 1253
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 1256
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 1259
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 1263
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # invokes: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)V

    .line 1264
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 1267
    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1070
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 1071
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1072
    .local v3, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1073
    .local v2, "selectionEnd":I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1074
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 1075
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1076
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->restartInput()V

    .line 1078
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 1079
    .local v1, "newCaret":I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    .line 1080
    return-void
.end method

.method public restartInput()V
    .locals 2

    .prologue
    .line 1736
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1737
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1740
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1742
    :cond_0
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 970
    iget-boolean v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v8, :cond_8

    .line 971
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 972
    const-string v8, "webview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[WebViewClassic.WebViewInputConnection::sendKeyEvent] >> event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 976
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x43

    if-ne v8, v9, :cond_3

    .line 978
    const/4 v5, 0x0

    .line 979
    .local v5, "result":Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 980
    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 981
    .local v7, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 983
    .local v6, "selectionEnd":I
    if-eq v7, v6, :cond_1

    if-ltz v7, :cond_1

    if-ltz v6, :cond_1

    .line 984
    invoke-static {v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 985
    sub-int v8, v6, v7

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    .line 1049
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v5    # "result":Z
    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :goto_0
    return v5

    .line 990
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v5    # "result":Z
    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_1
    const/4 v0, 0x1

    .line 991
    .local v0, "deleteLength":I
    add-int/lit8 v8, v7, -0x2

    if-ltz v8, :cond_2

    if-ne v7, v6, :cond_2

    .line 992
    const/4 v8, 0x1

    new-array v2, v8, [C

    .line 993
    .local v2, "lastChar":[C
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    invoke-interface {v1, v8, v7, v2, v9}, Landroid/text/Editable;->getChars(II[CI)V

    .line 994
    const/4 v8, 0x1

    new-array v4, v8, [C

    .line 995
    .local v4, "previousLastChar":[C
    add-int/lit8 v8, v7, -0x2

    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x0

    invoke-interface {v1, v8, v9, v4, v10}, Landroid/text/Editable;->getChars(II[CI)V

    .line 996
    const/4 v8, 0x0

    aget-char v8, v4, v8

    const/4 v9, 0x0

    aget-char v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 997
    const/4 v0, 0x2

    .line 998
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 999
    const-string v8, "webview"

    const-string v9, "[WebViewClassic.WebViewInputConnection::sendKeyEvent] >> set deleteLength = 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v2    # "lastChar":[C
    .end local v4    # "previousLastChar":[C
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    goto :goto_0

    .line 1007
    .end local v0    # "deleteLength":I
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v5    # "result":Z
    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x70

    if-ne v8, v9, :cond_4

    .line 1010
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v5

    .line 1012
    .restart local v5    # "result":Z
    goto :goto_0

    .line 1014
    .end local v5    # "result":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1015
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, "newComposingText":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v5

    goto :goto_0

    .line 1026
    .end local v3    # "newComposingText":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 1038
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x43

    if-eq v8, v9, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x70

    if-ne v8, v9, :cond_7

    .line 1041
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    .line 1043
    const/4 v5, 0x1

    goto :goto_0

    .line 1044
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    if-eqz v8, :cond_8

    .line 1045
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1049
    :cond_8
    invoke-super {p0, p1}, Landroid/webkit/WebViewClassic$WVInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public setAutoFillable(I)V
    .locals 6
    .param p1, "queryId"    # I

    .prologue
    .line 932
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    .line 934
    iget v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 935
    .local v0, "variation":I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 937
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 938
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 942
    :cond_1
    return-void

    .line 932
    .end local v0    # "variation":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 1416
    .local v2, "e":Landroid/text/Editable;
    move v0, p1

    .line 1417
    .local v0, "a":I
    move v1, p2

    .line 1418
    .local v1, "b":I
    if-eqz v2, :cond_4

    .line 1419
    if-le v0, v1, :cond_0

    .line 1420
    move v7, v0

    .line 1421
    .local v7, "tmp":I
    move v0, v1

    .line 1422
    move v1, v7

    .line 1424
    .end local v7    # "tmp":I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1425
    .local v3, "length":I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 1426
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 1427
    :cond_2
    if-le v0, v3, :cond_3

    move v0, v3

    .line 1428
    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    .line 1430
    .end local v3    # "length":I
    :cond_4
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1431
    .local v4, "original":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0x8b

    const-string v10, ""

    invoke-virtual {v8, v9, v0, v1, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1432
    .local v5, "replaceMessage":Landroid/os/Message;
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1433
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0xb4

    invoke-static {v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1435
    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v9, 0xb6

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1439
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setComposingRegion(II)Z

    move-result v6

    .line 1440
    .local v6, "result":Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    .line 1441
    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/16 v8, 0x8c

    const/4 v10, 0x1

    .line 1103
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1104
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1105
    iget-object v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1108
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1110
    .local v0, "editable":Landroid/text/Editable;
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    .line 1111
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->copyEditableWithSelectSpan(Landroid/text/Editable;)V

    .line 1112
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .line 1113
    .local v5, "start":I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 1114
    .local v1, "end":I
    if-ltz v5, :cond_1

    if-gez v1, :cond_7

    .line 1115
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1116
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1120
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1121
    move v6, v1

    .line 1122
    .local v6, "temp":I
    move v1, v5

    .line 1123
    move v5, v6

    .line 1125
    .end local v6    # "temp":I
    :cond_2
    sub-int v7, v1, v5

    invoke-direct {p0, p1, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1127
    .local v3, "limitedText":Ljava/lang/CharSequence;
    if-eq v3, p1, :cond_3

    .line 1128
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p2, v7

    .line 1132
    :cond_3
    sub-int v4, v1, v5

    .line 1133
    .local v4, "prevCharslength":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1134
    const-string v7, "prevchars = "

    invoke-direct {p0, v0, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1135
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SelectionStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SelectionEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ComposingSpanStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ComposingSpanEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v7, "nextchars = "

    invoke-direct {p0, p1, v7}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->printspans(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1142
    :cond_4
    invoke-super {p0, v3, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1144
    invoke-direct {p0, v5, v1, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 1147
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1148
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1149
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SelectionStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SelectionEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ComposingSpanStart = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ComposingSpanEnd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " start = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v7, "JimeBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " prevCharslength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", editable.length() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nextCharslength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    .line 1167
    if-eq v3, p1, :cond_6

    .line 1179
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int v2, v5, v7

    .line 1180
    .local v2, "lastCaret":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    .line 1181
    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    .line 1183
    .end local v2    # "lastCaret":I
    :cond_6
    return v10

    .line 1118
    .end local v3    # "limitedText":Ljava/lang/CharSequence;
    .end local v4    # "prevCharslength":I
    :cond_7
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isComposing:Z

    goto/16 :goto_0
.end method

.method public setSelection(II)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v9, -0x1

    .line 1370
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 1373
    .local v1, "editable":Landroid/text/Editable;
    if-eq p1, p2, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_0

    .line 1374
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result p2

    .line 1376
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getSelectionStart()I

    move-result v3

    .line 1377
    .local v3, "oldST":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getSelectionEnd()I

    move-result v2

    .line 1380
    .local v2, "oldED":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v5

    .line 1381
    .local v5, "s":I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 1382
    .local v0, "e":I
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1383
    const-string v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldST="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldED="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_1
    if-ne v3, p1, :cond_2

    if-ne v2, p2, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v2, :cond_3

    :cond_2
    if-eq v5, v9, :cond_4

    if-eq v0, v9, :cond_4

    .line 1392
    :cond_3
    const/4 v4, 0x1

    .line 1404
    :goto_0
    return v4

    .line 1396
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClassic$WVInputConnection;->setSelection(II)Z

    move-result v4

    .line 1398
    .local v4, "result":Z
    # getter for: Landroid/webkit/WebViewClassic;->INPUT_DEBUG:Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$400()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1399
    const-string v6, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WebViewClassic.WebViewInputConnection::setSelection] >> set start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->updateSelection()V

    goto :goto_0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1053
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1054
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1055
    .local v2, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1056
    .local v1, "selectionEnd":I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1057
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1062
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1063
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1064
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->setSelection(II)Z

    .line 1065
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->finishComposingText()Z

    .line 1066
    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1351
    iget v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1352
    iget v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1353
    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 1354
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1356
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1357
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1358
    .local v2, "selectionStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1359
    .local v1, "selectionEnd":I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 1360
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1361
    move v1, v2

    .line 1363
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1364
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1365
    return-void
.end method

.method public updateCursor([I)V
    .locals 10
    .param p1, "screenLoc"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 900
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 901
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->isBatchEditing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 904
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 905
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectRightCaretHeight:I
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    if-nez p1, :cond_2

    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 907
    .local v7, "mScreenOffset":[I
    :goto_0
    if-nez p1, :cond_0

    .line 908
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 909
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorBase:Landroid/graphics/Point;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectLeftCaretHeight:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mSelectCursorExtent:Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 915
    .local v6, "cursorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    # getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    aget v3, v7, v8

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    aget v4, v7, v9

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->right:I

    aget v5, v7, v8

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    aget v8, v7, v9

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic$HtcWebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 922
    .end local v6    # "cursorRect":Landroid/graphics/Rect;
    .end local v7    # "mScreenOffset":[I
    :cond_1
    return-void

    :cond_2
    move-object v7, p1

    .line 906
    goto/16 :goto_0
.end method
